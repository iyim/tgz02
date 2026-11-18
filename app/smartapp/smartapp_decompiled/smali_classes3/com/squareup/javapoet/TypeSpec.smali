.class public final Lcom/squareup/javapoet/TypeSpec;
.super Ljava/lang/Object;
.source "TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/TypeSpec$Builder;,
        Lcom/squareup/javapoet/TypeSpec$Kind;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field public final anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

.field public final enumConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final initializerBlock:Lcom/squareup/javapoet/CodeBlock;

.field public final javadoc:Lcom/squareup/javapoet/CodeBlock;

.field public final kind:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public final methodSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;"
        }
    .end annotation
.end field

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

.field public final originatingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field public final staticBlock:Lcom/squareup/javapoet/CodeBlock;

.field public final superclass:Lcom/squareup/javapoet/TypeName;

.field public final superinterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final typeSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Lcom/squareup/javapoet/TypeSpec$Builder;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$000(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/TypeSpec$Kind;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 61
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$100(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$200(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    .line 63
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$300(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    .line 64
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->annotations:Ljava/util/List;

    .line 65
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$500(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    .line 66
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$600(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->typeVariables:Ljava/util/List;

    .line 67
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$700(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->superclass:Lcom/squareup/javapoet/TypeName;

    .line 68
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$800(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    .line 69
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$900(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->enumConstants:Ljava/util/Map;

    .line 70
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1000(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    .line 71
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1100(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->staticBlock:Lcom/squareup/javapoet/CodeBlock;

    .line 72
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1200(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->initializerBlock:Lcom/squareup/javapoet/CodeBlock;

    .line 73
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1300(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    .line 74
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1500(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/TypeSpec;

    .line 79
    iget-object v1, v1, Lcom/squareup/javapoet/TypeSpec;->originatingElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec;->originatingElements:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/TypeSpec$Builder;Lcom/squareup/javapoet/TypeSpec$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/TypeSpec;-><init>(Lcom/squareup/javapoet/TypeSpec$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/squareup/javapoet/TypeSpec;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 91
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    .line 93
    iget-object v1, p1, Lcom/squareup/javapoet/TypeSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    iput-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->annotations:Ljava/util/List;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->typeVariables:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->superclass:Lcom/squareup/javapoet/TypeName;

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->enumConstants:Ljava/util/Map;

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    .line 101
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->staticBlock:Lcom/squareup/javapoet/CodeBlock;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->staticBlock:Lcom/squareup/javapoet/CodeBlock;

    .line 102
    iget-object p1, p1, Lcom/squareup/javapoet/TypeSpec;->initializerBlock:Lcom/squareup/javapoet/CodeBlock;

    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec;->initializerBlock:Lcom/squareup/javapoet/CodeBlock;

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec;->originatingElements:Ljava/util/List;

    return-void
.end method

.method public static annotationBuilder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 151
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "className == null"

    invoke-static {p0, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/javapoet/ClassName;

    invoke-virtual {p0}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/TypeSpec;->annotationBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static annotationBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 4

    .line 147
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "name == null"

    invoke-static {p0, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method

.method public static anonymousClassBuilder(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3

    .line 143
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method

.method public static varargs anonymousClassBuilder(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 137
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/squareup/javapoet/TypeSpec;->anonymousClassBuilder(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static classBuilder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "className == null"

    invoke-static {p0, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/javapoet/ClassName;

    invoke-virtual {p0}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 4

    .line 113
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "name == null"

    invoke-static {p0, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method

.method public static enumBuilder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 133
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "className == null"

    invoke-static {p0, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/javapoet/ClassName;

    invoke-virtual {p0}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/TypeSpec;->enumBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static enumBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 4

    .line 129
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "name == null"

    invoke-static {p0, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method

.method public static interfaceBuilder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "className == null"

    invoke-static {p0, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/javapoet/ClassName;

    invoke-virtual {p0}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/TypeSpec;->interfaceBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static interfaceBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 4

    .line 121
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Builder;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "name == null"

    invoke-static {p0, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method


# virtual methods
.method emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
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

    .line 175
    iget v0, p1, Lcom/squareup/javapoet/CodeWriter;->statementLine:I

    const/4 v1, -0x1

    .line 176
    iput v1, p1, Lcom/squareup/javapoet/CodeWriter;->statementLine:I

    const-string v1, " {\n"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 180
    :try_start_0
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emitJavadoc(Lcom/squareup/javapoet/CodeBlock;)V

    .line 181
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->annotations:Ljava/util/List;

    invoke-virtual {p1, p3, v3}, Lcom/squareup/javapoet/CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    const-string p3, "$L"

    .line 182
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-virtual {p1, p3, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    .line 183
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    iget-object p3, p3, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "("

    .line 184
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 185
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    const-string p3, ")"

    .line 186
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 188
    :cond_0
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 327
    iput v0, p1, Lcom/squareup/javapoet/CodeWriter;->statementLine:I

    return-void

    .line 191
    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto/16 :goto_6

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-eqz v4, :cond_4

    .line 193
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/squareup/javapoet/TypeName;

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->superclass:Lcom/squareup/javapoet/TypeName;

    :goto_0
    const-string v1, "new $T("

    .line 194
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p3, v4, v3

    invoke-virtual {p1, v1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    .line 195
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    const-string p3, ") {\n"

    .line 196
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto/16 :goto_6

    .line 199
    :cond_4
    new-instance v4, Lcom/squareup/javapoet/TypeSpec;

    invoke-direct {v4, p0}, Lcom/squareup/javapoet/TypeSpec;-><init>(Lcom/squareup/javapoet/TypeSpec;)V

    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->pushType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/CodeWriter;

    .line 201
    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emitJavadoc(Lcom/squareup/javapoet/CodeBlock;)V

    .line 202
    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->annotations:Ljava/util/List;

    invoke-virtual {p1, v4, v3}, Lcom/squareup/javapoet/CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    .line 203
    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v5}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1700(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/squareup/javapoet/Util;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1, v4, p3}, Lcom/squareup/javapoet/CodeWriter;->emitModifiers(Ljava/util/Set;Ljava/util/Set;)V

    .line 204
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v4, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x2

    const-string v6, "$L $L"

    if-ne p3, v4, :cond_5

    .line 205
    :try_start_2
    new-array p3, v5, [Ljava/lang/Object;

    const-string v4, "@interface"

    aput-object v4, p3, v3

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    aput-object v4, p3, v2

    invoke-virtual {p1, v6, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_1

    .line 207
    :cond_5
    new-array p3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-virtual {v4}, Lcom/squareup/javapoet/TypeSpec$Kind;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v3

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    aput-object v4, p3, v2

    invoke-virtual {p1, v6, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    .line 209
    :goto_1
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->typeVariables:Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emitTypeVariables(Ljava/util/List;)V

    .line 213
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v4, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne p3, v4, :cond_6

    .line 214
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    .line 217
    :cond_6
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->superclass:Lcom/squareup/javapoet/TypeName;

    sget-object v4, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {p3, v4}, Lcom/squareup/javapoet/TypeName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    goto :goto_2

    .line 219
    :cond_7
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->superclass:Lcom/squareup/javapoet/TypeName;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 220
    :goto_2
    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    .line 223
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, ","

    const-string v7, " $T"

    if-nez v5, :cond_9

    :try_start_3
    const-string v5, " extends"

    .line 224
    invoke-virtual {p1, v5}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 226
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v5, 0x1

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/javapoet/TypeName;

    if-nez v5, :cond_8

    .line 227
    invoke-virtual {p1, v6}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 228
    :cond_8
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v8, v5, v3

    invoke-virtual {p1, v7, v5}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    const/4 v5, 0x0

    goto :goto_4

    .line 233
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    const-string p3, " implements"

    .line 234
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 236
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x1

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/javapoet/TypeName;

    if-nez v4, :cond_a

    .line 237
    invoke-virtual {p1, v6}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 238
    :cond_a
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {p1, v7, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    const/4 v4, 0x0

    goto :goto_5

    .line 243
    :cond_b
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->popType()Lcom/squareup/javapoet/CodeWriter;

    .line 245
    invoke-virtual {p1, v1}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 248
    :goto_6
    invoke-virtual {p1, p0}, Lcom/squareup/javapoet/CodeWriter;->pushType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/CodeWriter;

    .line 249
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->indent()Lcom/squareup/javapoet/CodeWriter;

    .line 251
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->enumConstants:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 252
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "\n"

    if-eqz v1, :cond_10

    .line 253
    :try_start_4
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v2, :cond_c

    .line 254
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 255
    :cond_c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/javapoet/TypeSpec;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, p1, v1, v5}, Lcom/squareup/javapoet/TypeSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 258
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ",\n"

    .line 259
    invoke-virtual {p1, v1}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_9

    .line 260
    :cond_d
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    .line 263
    :cond_e
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_9

    :cond_f
    :goto_8
    const-string v1, ";\n"

    .line 261
    invoke-virtual {p1, v1}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    :goto_9
    const/4 v2, 0x0

    goto :goto_7

    .line 268
    :cond_10
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/FieldSpec;

    .line 269
    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v5}, Lcom/squareup/javapoet/FieldSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_a

    :cond_11
    if-nez v2, :cond_12

    .line 270
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 271
    :cond_12
    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v2}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1800(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/javapoet/FieldSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/util/Set;)V

    const/4 v2, 0x0

    goto :goto_a

    .line 275
    :cond_13
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->staticBlock:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p3}, Lcom/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_15

    if-nez v2, :cond_14

    .line 276
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 277
    :cond_14
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->staticBlock:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    const/4 v2, 0x0

    .line 282
    :cond_15
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/FieldSpec;

    .line 283
    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v5}, Lcom/squareup/javapoet/FieldSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_b

    :cond_16
    if-nez v2, :cond_17

    .line 284
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 285
    :cond_17
    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v2}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1800(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/javapoet/FieldSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/util/Set;)V

    const/4 v2, 0x0

    goto :goto_b

    .line 290
    :cond_18
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->initializerBlock:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p3}, Lcom/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1a

    if-nez v2, :cond_19

    .line 291
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 292
    :cond_19
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->initializerBlock:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    const/4 v2, 0x0

    .line 297
    :cond_1a
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/MethodSpec;

    .line 298
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec;->isConstructor()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_c

    :cond_1b
    if-nez v2, :cond_1c

    .line 299
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 300
    :cond_1c
    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v5}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, p1, v2, v5}, Lcom/squareup/javapoet/MethodSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    const/4 v2, 0x0

    goto :goto_c

    .line 305
    :cond_1d
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/MethodSpec;

    .line 306
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_d

    :cond_1e
    if-nez v2, :cond_1f

    .line 307
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 308
    :cond_1f
    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v5}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, p1, v2, v5}, Lcom/squareup/javapoet/MethodSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    const/4 v2, 0x0

    goto :goto_d

    .line 313
    :cond_20
    iget-object p3, p0, Lcom/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/TypeSpec;

    if-nez v2, :cond_21

    .line 314
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    :cond_21
    const/4 v2, 0x0

    .line 315
    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v5}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$2000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, p1, v2, v5}, Lcom/squareup/javapoet/TypeSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    const/4 v2, 0x0

    goto :goto_e

    .line 319
    :cond_22
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->unindent()Lcom/squareup/javapoet/CodeWriter;

    .line 320
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeWriter;->popType()Lcom/squareup/javapoet/CodeWriter;

    const-string p3, "}"

    .line 322
    invoke-virtual {p1, p3}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    if-nez p2, :cond_23

    .line 323
    iget-object p2, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-nez p2, :cond_23

    .line 324
    invoke-virtual {p1, v4}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    :cond_23
    iput v0, p1, Lcom/squareup/javapoet/CodeWriter;->statementLine:I

    return-void

    :catchall_0
    move-exception p2

    iput v0, p1, Lcom/squareup/javapoet/CodeWriter;->statementLine:I

    goto :goto_10

    :goto_f
    throw p2

    :goto_10
    goto :goto_f
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

    .line 334
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/javapoet/TypeSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasModifier(Ljavax/lang/model/element/Modifier;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/squareup/javapoet/TypeSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5

    .line 155
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Builder;

    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V

    .line 156
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$300(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 157
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->annotations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$500(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$600(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->typeVariables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec;->superclass:Lcom/squareup/javapoet/TypeName;

    invoke-static {v0, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$702(Lcom/squareup/javapoet/TypeSpec$Builder;Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeName;

    .line 161
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$800(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->superinterfaces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$900(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->enumConstants:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1000(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->fieldSpecs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1300(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->methodSpecs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->typeSpecs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1200(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->initializerBlock:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 167
    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->access$1100(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec;->staticBlock:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    :try_start_0
    new-instance v1, Lcom/squareup/javapoet/CodeWriter;

    invoke-direct {v1, v0}, Lcom/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/squareup/javapoet/TypeSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 349
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
