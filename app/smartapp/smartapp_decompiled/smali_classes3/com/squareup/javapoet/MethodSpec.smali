.class public final Lcom/squareup/javapoet/MethodSpec;
.super Ljava/lang/Object;
.source "MethodSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/MethodSpec$Builder;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR:Ljava/lang/String; = "<init>"


# instance fields
.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final code:Lcom/squareup/javapoet/CodeBlock;

.field public final defaultValue:Lcom/squareup/javapoet/CodeBlock;

.field public final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final javadoc:Lcom/squareup/javapoet/CodeBlock;

.field public final modifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/ParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final returnType:Lcom/squareup/javapoet/TypeName;

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;"
        }
    .end annotation
.end field

.field public final varargs:Z


# direct methods
.method private constructor <init>(Lcom/squareup/javapoet/MethodSpec$Builder;)V
    .locals 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$000(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$100(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-array v4, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$200(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "abstract method %s cannot have code"

    .line 59
    invoke-static {v1, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$300(Lcom/squareup/javapoet/MethodSpec$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/squareup/javapoet/MethodSpec;->lastParameterIsArray(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$200(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "last parameter of varargs method %s must be an array"

    .line 61
    invoke-static {v1, v4, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$200(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "name == null"

    invoke-static {v1, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$500(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    .line 66
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$600(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->annotations:Ljava/util/List;

    .line 67
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$100(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    .line 68
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$700(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->typeVariables:Ljava/util/List;

    .line 69
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$800(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/TypeName;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->returnType:Lcom/squareup/javapoet/TypeName;

    .line 70
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->parameters:Ljava/util/List;

    .line 71
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$300(Lcom/squareup/javapoet/MethodSpec$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/squareup/javapoet/MethodSpec;->varargs:Z

    .line 72
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$900(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->exceptions:Ljava/util/List;

    .line 73
    invoke-static {p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$1000(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/MethodSpec;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    .line 74
    iput-object v0, p0, Lcom/squareup/javapoet/MethodSpec;->code:Lcom/squareup/javapoet/CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/MethodSpec$Builder;Lcom/squareup/javapoet/MethodSpec$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/MethodSpec;-><init>(Lcom/squareup/javapoet/MethodSpec$Builder;)V

    return-void
.end method

.method public static constructorBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3

    .line 176
    new-instance v0, Lcom/squareup/javapoet/MethodSpec$Builder;

    const-string v1, "<init>"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/MethodSpec$1;)V

    return-object v0
.end method

.method private lastParameterIsArray(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/ParameterSpec;",
            ">;)Z"
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/javapoet/ParameterSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/ParameterSpec;->type:Lcom/squareup/javapoet/TypeName;

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->arrayComponent(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 2

    .line 172
    new-instance v0, Lcom/squareup/javapoet/MethodSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/MethodSpec$1;)V

    return-object v0
.end method

.method public static overriding(Ljavax/lang/model/element/ExecutableElement;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 189
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "method == null"

    invoke-static {p0, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    .line 192
    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    .line 193
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 194
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 201
    const-class v2, Ljava/lang/Override;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 203
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 204
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/squareup/javapoet/Util;->DEFAULT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 208
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    .line 209
    invoke-interface {v2}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    .line 210
    invoke-static {v2}, Lcom/squareup/javapoet/TypeVariableName;->get(Ljavax/lang/model/type/TypeVariable;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addTypeVariable(Lcom/squareup/javapoet/TypeVariableName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 214
    invoke-static {p0}, Lcom/squareup/javapoet/ParameterSpec;->parametersOf(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameters(Ljava/lang/Iterable;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 215
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->varargs(Z)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 217
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 218
    invoke-static {v0}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->addException(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_1

    :cond_1
    return-object v1

    .line 195
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot override method with modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static overriding(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/util/Types;)Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 5

    .line 238
    invoke-interface {p2, p1, p0}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/ExecutableType;

    .line 239
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object p2

    .line 240
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 242
    invoke-static {p0}, Lcom/squareup/javapoet/MethodSpec;->overriding(Ljavax/lang/model/element/ExecutableElement;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object p0

    .line 243
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 244
    invoke-static {p0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 245
    invoke-static {p0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/ParameterSpec;

    .line 246
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v2}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v2

    .line 247
    invoke-static {p0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lcom/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/squareup/javapoet/ParameterSpec;->toBuilder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/javapoet/ParameterSpec$Builder;->build()Lcom/squareup/javapoet/ParameterSpec;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javapoet/CodeWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitJavadoc(Lcom/squareup/javapoet/CodeBlock;)V

    .line 85
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec;->annotations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javapoet/CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    .line 86
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    invoke-virtual {p1, v0, p3}, Lcom/squareup/javapoet/CodeWriter;->emitModifiers(Ljava/util/Set;Ljava/util/Set;)V

    .line 88
    iget-object p3, p0, Lcom/squareup/javapoet/MethodSpec;->typeVariables:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 89
    iget-object p3, p0, Lcom/squareup/javapoet/MethodSpec;->typeVariables:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emitTypeVariables(Ljava/util/List;)V

    const-string p3, " "

    .line 90
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/javapoet/MethodSpec;->isConstructor()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 94
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "$L($Z"

    invoke-virtual {p1, p2, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 96
    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/squareup/javapoet/MethodSpec;->returnType:Lcom/squareup/javapoet/TypeName;

    aput-object p3, p2, v1

    iget-object p3, p0, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object p3, p2, v0

    const-string p3, "$T $L($Z"

    invoke-virtual {p1, p3, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    .line 100
    :goto_0
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->parameters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_4

    .line 101
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/javapoet/ParameterSpec;

    if-nez p3, :cond_2

    .line 102
    invoke-virtual {p1, v3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/squareup/javapoet/CodeWriter;->emitWrappingSpace()Lcom/squareup/javapoet/CodeWriter;

    .line 103
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/squareup/javapoet/MethodSpec;->varargs:Z

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v2, p1, p3}, Lcom/squareup/javapoet/ParameterSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Z)V

    const/4 p3, 0x0

    goto :goto_1

    :cond_4
    const-string p2, ")"

    .line 107
    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 109
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, " default "

    .line 110
    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 111
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    .line 114
    :cond_5
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->exceptions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 115
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->emitWrappingSpace()Lcom/squareup/javapoet/CodeWriter;

    move-result-object p2

    const-string p3, "throws"

    invoke-virtual {p2, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 117
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->exceptions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x1

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/javapoet/TypeName;

    if-nez p3, :cond_6

    .line 118
    invoke-virtual {p1, v3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 119
    :cond_6
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->emitWrappingSpace()Lcom/squareup/javapoet/CodeWriter;

    move-result-object p3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "$T"

    invoke-virtual {p3, v2, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    const/4 p3, 0x0

    goto :goto_3

    .line 124
    :cond_7
    sget-object p2, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {p0, p2}, Lcom/squareup/javapoet/MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result p2

    const-string p3, ";\n"

    if-eqz p2, :cond_8

    .line 125
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_4

    .line 126
    :cond_8
    sget-object p2, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    invoke-virtual {p0, p2}, Lcom/squareup/javapoet/MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 128
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->code:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    .line 129
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_4

    :cond_9
    const-string p2, " {\n"

    .line 131
    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 133
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->indent()Lcom/squareup/javapoet/CodeWriter;

    .line 134
    iget-object p2, p0, Lcom/squareup/javapoet/MethodSpec;->code:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    .line 135
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->unindent()Lcom/squareup/javapoet/CodeWriter;

    const-string p2, "}\n"

    .line 137
    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    :goto_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 152
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/javapoet/MethodSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasModifier(Ljavax/lang/model/element/Modifier;)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/squareup/javapoet/MethodSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/squareup/javapoet/MethodSpec$Builder;
    .locals 3

    .line 254
    new-instance v0, Lcom/squareup/javapoet/MethodSpec$Builder;

    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/MethodSpec$1;)V

    .line 255
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$500(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 256
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$600(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->annotations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$100(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$700(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->typeVariables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->returnType:Lcom/squareup/javapoet/TypeName;

    invoke-static {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$802(Lcom/squareup/javapoet/MethodSpec$Builder;Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeName;

    .line 260
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$400(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->parameters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$900(Lcom/squareup/javapoet/MethodSpec$Builder;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->exceptions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    invoke-static {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$000(Lcom/squareup/javapoet/MethodSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/MethodSpec;->code:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 263
    iget-boolean v1, p0, Lcom/squareup/javapoet/MethodSpec;->varargs:Z

    invoke-static {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$302(Lcom/squareup/javapoet/MethodSpec$Builder;Z)Z

    .line 264
    iget-object v1, p0, Lcom/squareup/javapoet/MethodSpec;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    invoke-static {v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->access$1002(Lcom/squareup/javapoet/MethodSpec$Builder;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    :try_start_0
    new-instance v1, Lcom/squareup/javapoet/CodeWriter;

    invoke-direct {v1, v0}, Lcom/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;)V

    const-string v2, "Constructor"

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 167
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
