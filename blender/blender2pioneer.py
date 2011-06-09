# blender2pioneer.py
# This script creates some lua code to assist people with modeling for pioneer

# This is experimental!!!

bl_info = {
    "name": "blender2pioneer",
    "description": "This script exports lua code for the game pioneer",
    "author": "Phil Howlett",
    "version:": (0,0,11),
    "blender": (2, 5, 3),
    "api": 31236,
    "location": "File > Import-Export",
    "warning": 'This is currently for pioneer Alpha 11. Beware of tribbles!',
    "wiki_url": "",
    "tracker_url": "",
    "category": "Import-Export"
}

import bpy

def doInfo():
    print("     info = {")
    print("         lod_pixels = { 0 },")
    print("         bounding_radius = " + str(round(max(bpy.context.active_object.dimensions), 1)) + ",") # max dimension
    matName = []
    for m in bpy.context.active_object.material_slots:
        matName.append(m.name)
    print("         materials = {" + str(matName).strip('[]') + "}")
    print("     },")


def doStatic():
    print("     static = function(lod)")
    # Materials
    for m in bpy.context.active_object.material_slots:
        strMaterial = "         set_material("
        strMaterial += "'" + m.name + "',"
        strMaterial += str(round(m.material.diffuse_color.r, 3)) + ","
        strMaterial += str(round(m.material.diffuse_color.g, 3)) + ","
        strMaterial += str(round(m.material.diffuse_color.b, 3)) + ","
        strMaterial += str(round(m.material.alpha, 3)) + ","
        strMaterial += str(round(m.material.specular_color.r, 3)) + ","
        strMaterial += str(round(m.material.specular_color.g, 3)) + ","
        strMaterial += str(round(m.material.specular_color.b, 3)) + ","
        strMaterial += " 0, 0,0,0)"
        print(strMaterial)
    print("     end,")


def dump():
    # header
    print("define_model('" + bpy.context.active_object.name + "', {")
    # info
    doInfo()
    # static
    doStatic()
    # dynamic
    print("     dynamic = function(lod)")
    print("     end,")
    # footer
    print("})")
    
class pioneerOperator(bpy.types.Operator):
    bl_idname = "export.pioneer"
    bl_label = "Export to pioneer"
    myfilename = ""
    
    def execute(self, context):
        dump()
        return {'FINISHED'}

# register
def register():
    bpy.utils.register_class(pioneerOperator)

# unregister
def unregister():
    bpy.utils.unregister_class(pioneerOperator)

if __name__ == "__main__":
    register()

