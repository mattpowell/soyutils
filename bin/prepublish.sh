echo "(function(__global) {\n" > ./soyutils_nogoog.js
curl --data 'code_url=https://raw.githubusercontent.com/google/closure-templates/master/javascript/soyutils_usegoog.js&compilation_level=SIMPLE_OPTIMIZATIONS&formatting=pretty_print&use_closure_library=true&output_info=compiled_code' 'https://closure-compiler.appspot.com/compile' >> ./soyutils_nogoog.js
echo "__global = __global || this;\n
__global.soy = soy;\n
__global.soydata = soydata;\n
})(typeof module === 'object' && (module.exports = {}));" >> ./soyutils_nogoog.js