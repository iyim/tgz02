.class public final Lcom/squareup/javapoet/MethodSpec$Builder;
.super Ljava/lang/Object;
.source "MethodSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/MethodSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final code:Lcom/squareup/javapoet/CodeBlock$Builder;

.field private defaultValue:Lcom/squareup/javapoet/CodeBlock;

.field private final exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field private final javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

.field private final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/ParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private returnType:Lcom/squareup/javapoet/TypeName;

.field private typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;"
        }
    .end annotation
.end field

.field private varargs:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->annotations:Ljava/util/List;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->modifiers:Ljava/util/List;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->typeVariables:Ljava/util/List;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->parameters:Ljava/util/List;

    .line 277
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->exceptions:Ljava/util/Set;

    .line 278
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v0, 0x0

    .line 283
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "name == null"

    invoke-static {p1, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<init>"

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v0, "not a valid name: %s"

    invoke-static {v2, v0, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->name:Ljava/lang/String;

    .line 287
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/squareup/javapoet/TypeName;->VOID:Lcom/squareup/javapoet/TypeName;

    :goto_2
    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->returnType:Lcom/squareup/javapoet/TypeName;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/squareup/javapoet/MethodSpec$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->modifiers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/squareup/javapoet/MethodSpec$Builder;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    return-object p1
.end method

.method static synthetic access$200(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/squareup/javapoet/MethodSpec$Builder;)Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->varargs:Z

    return p0
.end method

.method static synthetic access$302(Lcom/squareup/javapoet/MethodSpec$Builder;Z)Z
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->varargs:Z

    return p1
.end method

.method static synthetic access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->parameters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->annotations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->typeVariables:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->returnType:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method static synthetic access$802(Lcom/squareup/javapoet/MethodSpec$Builder;Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->returnType:Lcom/squareup/javapoet/TypeName;

    return-object p1
.end method

.method static synthetic access$900(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/Set;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->exceptions:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    .line 319
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "annotationSpecs == null"

    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/AnnotationSpec;

    .line 303
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addCode(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addCode(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "// "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->exceptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addException(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0

    .line 403
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addExceptions(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 390
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "exceptions == null"

    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeName;

    .line 392
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->exceptions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addJavadoc(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addModifiers(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "modifiers == null"

    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 331
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->modifiers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 323
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "modifiers == null"

    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNamedCode(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->addNamed(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addParameter(Lcom/squareup/javapoet/ParameterSpec;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0

    .line 373
    invoke-static {p1, p2, p3}, Lcom/squareup/javapoet/ParameterSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/ParameterSpec$Builder;->build()Lcom/squareup/javapoet/ParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/ParameterSpec;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0

    .line 377
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addParameters(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/ParameterSpec;",
            ">;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 360
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "parameterSpecs == null"

    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/ParameterSpec;

    .line 362
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addStatement(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->addStatement(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addTypeVariable(Lcom/squareup/javapoet/TypeVariableName;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariables(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/MethodSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "typeVariables == null"

    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeVariableName;

    .line 339
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/MethodSpec;
    .locals 2

    .line 479
    new-instance v0, Lcom/squareup/javapoet/MethodSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/MethodSpec;-><init>(Lcom/squareup/javapoet/MethodSpec$Builder;Lcom/squareup/javapoet/MethodSpec$1;)V

    return-object v0
.end method

.method public defaultValue(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "defaultValue was already set"

    invoke-static {v0, v3, v2}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 432
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "codeBlock == null"

    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/javapoet/CodeBlock;

    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method public varargs defaultValue(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0

    .line 427
    invoke-static {p1, p2}, Lcom/squareup/javapoet/CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->defaultValue(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->endControlFlow()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->code:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->name:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "constructor cannot have return type."

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->returnType:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method public returns(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0

    .line 356
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs()Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 381
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->varargs(Z)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs(Z)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/squareup/javapoet/MethodSpec$Builder;->varargs:Z

    return-object p0
.end method
