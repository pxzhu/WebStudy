var name = 'phs';
var letter = 'Dear ' + name + '\n\n\
Lorem ipsum, dolor sit amet consectetur adipisicing elit. ' + name + ' Asperiores ullam totam eum nihil non, laboriosam fuga soluta quo veniam consequatur provident saepe magni illum aut blanditiis quasi deleniti vitae sunt? ' + name;

var letter = `Dear ${name}

Lorem ipsum, dolor sit amet consectetur adipisicing elit. ${name} Asperiores ullam totam eum nihil non, ${1 + 1} laboriosam fuga soluta quo veniam consequatur provident saepe magni illum aut blanditiis quasi deleniti vitae sunt? ${name}`;

console.log(letter);