.class public final Lcom/squareup/javapoet/AnnotationSpec$Builder;
.super Ljava/lang/Object;
.source "AnnotationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/AnnotationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/CodeBlock;",
            ">;>;"
        }
    .end annotation
.end field

.field private final type:Lcom/squareup/javapoet/TypeName;


# direct methods
.method private constructor <init>(Lcom/squareup/javapoet/TypeName;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    .line 201
    iput-object p1, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/TypeName;Lcom/squareup/javapoet/AnnotationSpec$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/javapoet/AnnotationSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/squareup/javapoet/AnnotationSpec$Builder;)Ljava/util/Map;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 0

    .line 205
    invoke-static {p2, p3}, Lcom/squareup/javapoet/CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method addMemberForValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 4

    const/4 v0, 0x0

    .line 224
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "memberName == null"

    invoke-static {p1, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 225
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "value == null, constant non-null value expected for %s"

    invoke-static {p2, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 227
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$T.class"

    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    instance-of v2, p2, Ljava/lang/Enum;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 230
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "$T.$L"

    invoke-virtual {p0, p1, p2, v2}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 233
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$S"

    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 235
    :cond_2
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 236
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$Lf"

    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 238
    :cond_3
    instance-of v2, p2, Ljava/lang/Character;

    if-eqz v2, :cond_4

    .line 239
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-static {p2}, Lcom/squareup/javapoet/Util;->characterLiteralWithoutSingleQuotes(C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "\'$L\'"

    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 241
    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$L"

    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/squareup/javapoet/AnnotationSpec;
    .locals 2

    .line 245
    new-instance v0, Lcom/squareup/javapoet/AnnotationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/AnnotationSpec;-><init>(Lcom/squareup/javapoet/AnnotationSpec$Builder;Lcom/squareup/javapoet/AnnotationSpec$1;)V

    return-object v0
.end method
