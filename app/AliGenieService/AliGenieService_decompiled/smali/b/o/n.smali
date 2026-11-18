.class public final Lb/o/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lb/o/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/o/n;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/o/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/o/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/o/n;->b:Lb/o/r;

    return-void
.end method

.method public static a(Landroid/util/TypedValue;Lb/o/p;Lb/o/p;Ljava/lang/String;Ljava/lang/String;)Lb/o/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Lb/o/d;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget v0, Lb/o/u/a;->NavArgument_nullable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    sget-object v2, Lb/o/n;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TypedValue;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sget-object v3, Lb/o/n;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    sget v3, Lb/o/u/a;->NavArgument_argType:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p3

    .line 27
    sget-object v5, Lb/o/p;->b:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object p3, Lb/o/p;->b:Lb/o/p;

    goto/16 :goto_2

    :cond_1
    sget-object v5, Lb/o/p;->d:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object p3, Lb/o/p;->d:Lb/o/p;

    goto/16 :goto_2

    :cond_2
    sget-object v5, Lb/o/p;->e:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object p3, Lb/o/p;->e:Lb/o/p;

    goto/16 :goto_2

    :cond_3
    sget-object v5, Lb/o/p;->f:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object p3, Lb/o/p;->f:Lb/o/p;

    goto/16 :goto_2

    :cond_4
    sget-object v5, Lb/o/p;->i:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p3, Lb/o/p;->i:Lb/o/p;

    goto/16 :goto_2

    :cond_5
    sget-object v5, Lb/o/p;->j:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object p3, Lb/o/p;->j:Lb/o/p;

    goto/16 :goto_2

    :cond_6
    sget-object v5, Lb/o/p;->k:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_1

    :cond_7
    sget-object v5, Lb/o/p;->l:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object p3, Lb/o/p;->l:Lb/o/p;

    goto/16 :goto_2

    :cond_8
    sget-object v5, Lb/o/p;->g:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object p3, Lb/o/p;->g:Lb/o/p;

    goto/16 :goto_2

    :cond_9
    sget-object v5, Lb/o/p;->h:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object p3, Lb/o/p;->h:Lb/o/p;

    goto/16 :goto_2

    :cond_a
    sget-object v5, Lb/o/p;->c:Lb/o/p;

    invoke-virtual {v5}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object p3, Lb/o/p;->c:Lb/o/p;

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    :try_start_0
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz p3, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_c
    move-object p3, v3

    :goto_0
    const-string v5, "[]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/os/Parcelable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance p3, Lb/o/p$m;

    invoke-direct {p3, v5}, Lb/o/p$m;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_d
    const-class v6, Ljava/io/Serializable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance p3, Lb/o/p$o;

    invoke-direct {p3, v5}, Lb/o/p$o;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_e
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/os/Parcelable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance p3, Lb/o/p$n;

    invoke-direct {p3, v5}, Lb/o/p$n;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_f
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance p3, Lb/o/p$l;

    invoke-direct {p3, v5}, Lb/o/p$l;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_10
    const-class v6, Ljava/io/Serializable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance p3, Lb/o/p$p;

    invoke-direct {p3, v5}, Lb/o/p$p;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not Serializable or Parcelable."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_12
    :goto_1
    sget-object p3, Lb/o/p;->k:Lb/o/p;

    goto :goto_2

    :cond_13
    move-object p3, v4

    .line 28
    :goto_2
    sget v5, Lb/o/u/a;->NavArgument_android_defaultValue:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_22

    sget-object v5, Lb/o/p;->c:Lb/o/p;

    const-string v7, "\' for "

    const-string v8, "unsupported value \'"

    const/16 v9, 0x10

    if-ne p3, v5, :cond_16

    iget p1, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_9

    :cond_14
    iget p1, v2, Landroid/util/TypedValue;->type:I

    if-ne p1, v9, :cond_15

    iget p1, v2, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_9

    :cond_15
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v8}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Must be a reference to a resource."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    iget v10, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_18

    if-nez p3, :cond_17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object p3, v5

    goto/16 :goto_9

    :cond_17
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v8}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". You must use a \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lb/o/p;->c:Lb/o/p;

    invoke-virtual {p3}, Lb/o/p;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" type to reference other resources."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    sget-object v5, Lb/o/p;->k:Lb/o/p;

    if-ne p3, v5, :cond_19

    sget p2, Lb/o/u/a;->NavArgument_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    :cond_19
    iget p1, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-eq p1, v5, :cond_20

    const/4 v5, 0x4

    const-string v7, "float"

    if-eq p1, v5, :cond_1f

    const/4 v5, 0x5

    if-eq p1, v5, :cond_1e

    const/16 p2, 0x12

    if-eq p1, p2, :cond_1c

    if-lt p1, v9, :cond_1b

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_1b

    sget-object p1, Lb/o/p;->g:Lb/o/p;

    if-ne p3, p1, :cond_1a

    invoke-static {v2, p3, p1, v3, v7}, Lb/o/n;->a(Landroid/util/TypedValue;Lb/o/p;Lb/o/p;Ljava/lang/String;Ljava/lang/String;)Lb/o/p;

    move-result-object p1

    iget p2, v2, Landroid/util/TypedValue;->data:I

    int-to-float p2, p2

    goto :goto_5

    :cond_1a
    sget-object p1, Lb/o/p;->b:Lb/o/p;

    const-string p2, "integer"

    invoke-static {v2, p3, p1, v3, p2}, Lb/o/n;->a(Landroid/util/TypedValue;Lb/o/p;Lb/o/p;Ljava/lang/String;Ljava/lang/String;)Lb/o/p;

    move-result-object p1

    iget p2, v2, Landroid/util/TypedValue;->data:I

    goto :goto_4

    :cond_1b
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "unsupported argument type "

    invoke-static {p2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v2, Landroid/util/TypedValue;->type:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    sget-object p1, Lb/o/p;->i:Lb/o/p;

    const-string p2, "boolean"

    invoke-static {v2, p3, p1, v3, p2}, Lb/o/n;->a(Landroid/util/TypedValue;Lb/o/p;Lb/o/p;Ljava/lang/String;Ljava/lang/String;)Lb/o/p;

    move-result-object p1

    iget p2, v2, Landroid/util/TypedValue;->data:I

    if-eqz p2, :cond_1d

    move p2, v6

    goto :goto_3

    :cond_1d
    move p2, v1

    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_6

    :cond_1e
    sget-object p1, Lb/o/p;->b:Lb/o/p;

    const-string v5, "dimension"

    invoke-static {v2, p3, p1, v3, v5}, Lb/o/n;->a(Landroid/util/TypedValue;Lb/o/p;Lb/o/p;Ljava/lang/String;Ljava/lang/String;)Lb/o/p;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_6

    :cond_1f
    sget-object p1, Lb/o/p;->g:Lb/o/p;

    invoke-static {v2, p3, p1, v3, v7}, Lb/o/n;->a(Landroid/util/TypedValue;Lb/o/p;Lb/o/p;Ljava/lang/String;Ljava/lang/String;)Lb/o/p;

    move-result-object p1

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    :goto_5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_6
    move-object p3, p1

    move-object p1, p2

    goto :goto_9

    :cond_20
    iget-object p1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_21

    .line 29
    :try_start_1
    sget-object p2, Lb/o/p;->b:Lb/o/p;

    invoke-virtual {p2, p1}, Lb/o/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    sget-object p2, Lb/o/p;->b:Lb/o/p;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    move-object p3, p2

    goto :goto_8

    :catch_1
    :try_start_2
    sget-object p2, Lb/o/p;->e:Lb/o/p;

    invoke-virtual {p2, p1}, Lb/o/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    sget-object p2, Lb/o/p;->e:Lb/o/p;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    :try_start_3
    sget-object p2, Lb/o/p;->g:Lb/o/p;

    invoke-virtual {p2, p1}, Lb/o/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    sget-object p2, Lb/o/p;->g:Lb/o/p;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    :try_start_4
    sget-object p2, Lb/o/p;->i:Lb/o/p;

    invoke-virtual {p2, p1}, Lb/o/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    sget-object p2, Lb/o/p;->i:Lb/o/p;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    sget-object p2, Lb/o/p;->k:Lb/o/p;

    goto :goto_7

    .line 30
    :cond_21
    :goto_8
    invoke-virtual {p3, p1}, Lb/o/p;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    :cond_22
    move-object p1, v4

    :goto_9
    if-eqz p1, :cond_23

    move v1, v6

    goto :goto_a

    :cond_23
    move-object p1, v4

    :goto_a
    if-eqz p3, :cond_24

    goto :goto_b

    :cond_24
    move-object p3, v4

    :goto_b
    if-nez p3, :cond_25

    .line 31
    invoke-static {p1}, Lb/o/p;->a(Ljava/lang/Object;)Lb/o/p;

    move-result-object p3

    :cond_25
    new-instance p2, Lb/o/d;

    invoke-direct {p2, p3, v0, p1, v1}, Lb/o/d;-><init>(Lb/o/p;ZLjava/lang/Object;Z)V

    return-object p2
.end method

.method public final a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Lb/o/i;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lb/o/n;->b:Lb/o/r;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/o/r;->a(Ljava/lang/String;)Lb/o/q;

    move-result-object v4

    invoke-virtual {v4}, Lb/o/q;->a()Lb/o/i;

    move-result-object v4

    iget-object v5, v0, Lb/o/n;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lb/o/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_1c

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v5, :cond_0

    if-eq v7, v9, :cond_1c

    :cond_0
    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "argument"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Arguments must have a name"

    if-eqz v11, :cond_5

    .line 1
    sget-object v7, Lb/o/u/a;->NavArgument:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v8, Lb/o/u/a;->NavArgument_android_name:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v7, v1, v3}, Lb/o/n;->a(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Lb/o/d;

    move-result-object v9

    .line 2
    iget-object v10, v4, Lb/o/i;->i:Ljava/util/HashMap;

    if-nez v10, :cond_3

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v4, Lb/o/i;->i:Ljava/util/HashMap;

    :cond_3
    iget-object v10, v4, Lb/o/i;->i:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_7

    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v11, "deepLink"

    .line 4
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 5
    sget-object v7, Lb/o/u/a;->NavDeepLink:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v8, Lb/o/u/a;->NavDeepLink_uri:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lb/o/u/a;->NavDeepLink_action:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lb/o/u/a;->NavDeepLink_mimeType:I

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_1

    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    const-string v11, "${applicationId}"

    const/4 v12, 0x0

    if-eqz v8, :cond_8

    iget-object v13, v0, Lb/o/n;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_8
    move-object v8, v12

    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v0, Lb/o/n;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The NavDeepLink cannot have an empty action."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v9, v12

    :goto_3
    if-eqz v10, :cond_b

    .line 7
    iget-object v12, v0, Lb/o/n;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 8
    :cond_b
    new-instance v10, Lb/o/g;

    invoke-direct {v10, v8, v9, v12}, Lb/o/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v8, v4, Lb/o/i;->g:Ljava/util/ArrayList;

    if-nez v8, :cond_c

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lb/o/i;->g:Ljava/util/ArrayList;

    :cond_c
    iget-object v8, v4, Lb/o/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_7

    :cond_d
    const-string v11, "action"

    .line 11
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_19

    .line 12
    sget-object v7, Lb/o/u/a;->NavAction:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v11, Lb/o/u/a;->NavAction_android_id:I

    invoke-virtual {v7, v11, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v14, Lb/o/u/a;->NavAction_destination:I

    invoke-virtual {v7, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    new-instance v15, Lb/o/c;

    invoke-direct {v15, v14}, Lb/o/c;-><init>(I)V

    sget v14, Lb/o/u/a;->NavAction_launchSingleTop:I

    invoke-virtual {v7, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    sget v14, Lb/o/u/a;->NavAction_popUpTo:I

    const/4 v10, -0x1

    invoke-virtual {v7, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    sget v14, Lb/o/u/a;->NavAction_popUpToInclusive:I

    invoke-virtual {v7, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    sget v13, Lb/o/u/a;->NavAction_enterAnim:I

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    sget v13, Lb/o/u/a;->NavAction_exitAnim:I

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    sget v13, Lb/o/u/a;->NavAction_popEnterAnim:I

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    sget v13, Lb/o/u/a;->NavAction_popExitAnim:I

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    .line 13
    new-instance v10, Lb/o/o;

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v23}, Lb/o/o;-><init>(ZIZIIII)V

    .line 14
    iput-object v10, v15, Lb/o/c;->b:Lb/o/o;

    .line 15
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    add-int/2addr v13, v6

    :goto_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    if-eq v14, v6, :cond_14

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-ge v6, v13, :cond_e

    if-eq v14, v9, :cond_14

    :cond_e
    const/4 v9, 0x2

    if-eq v14, v9, :cond_f

    :goto_5
    const/4 v6, 0x1

    const/4 v9, 0x3

    goto :goto_4

    :cond_f
    if-le v6, v13, :cond_10

    goto :goto_5

    :cond_10
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 16
    sget-object v6, Lb/o/u/a;->NavArgument:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v14, Lb/o/u/a;->NavArgument_android_name:I

    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v0, v6, v1, v3}, Lb/o/n;->a(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Lb/o/d;

    move-result-object v9

    .line 17
    iget-boolean v3, v9, Lb/o/d;->c:Z

    if-eqz v3, :cond_11

    .line 18
    invoke-virtual {v9, v14, v10}, Lb/o/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_11
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :cond_12
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_6
    move/from16 v3, p4

    goto :goto_5

    .line 19
    :cond_14
    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 20
    iput-object v10, v15, Lb/o/c;->c:Landroid/os/Bundle;

    .line 21
    :cond_15
    invoke-virtual {v4}, Lb/o/i;->b()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v11, :cond_17

    iget-object v3, v4, Lb/o/i;->h:Lb/e/i;

    if-nez v3, :cond_16

    new-instance v3, Lb/e/i;

    const/16 v6, 0xa

    .line 22
    invoke-direct {v3, v6}, Lb/e/i;-><init>(I)V

    .line 23
    iput-object v3, v4, Lb/o/i;->h:Lb/e/i;

    :cond_16
    iget-object v3, v4, Lb/o/i;->h:Lb/e/i;

    invoke-virtual {v3, v11, v15}, Lb/e/i;->c(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    .line 25
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot have an action with actionId 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    const-string v3, "include"

    .line 26
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    instance-of v3, v4, Lb/o/j;

    if-eqz v3, :cond_1a

    sget-object v3, Lb/o/t;->NavInclude:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v6, Lb/o/t;->NavInclude_graph:I

    invoke-virtual {v3, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move-object v7, v4

    check-cast v7, Lb/o/j;

    invoke-virtual {v0, v6}, Lb/o/n;->a(I)Lb/o/j;

    move-result-object v6

    invoke-virtual {v7, v6}, Lb/o/j;->a(Lb/o/i;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :cond_1a
    instance-of v3, v4, Lb/o/j;

    if-eqz v3, :cond_1b

    move-object v3, v4

    check-cast v3, Lb/o/j;

    invoke-virtual/range {p0 .. p4}, Lb/o/n;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Lb/o/i;

    move-result-object v6

    invoke-virtual {v3, v6}, Lb/o/j;->a(Lb/o/i;)V

    :cond_1b
    :goto_7
    move/from16 v3, p4

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_1c
    return-object v4
.end method

.method public a(I)Lb/o/j;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lb/o/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lb/o/n;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Lb/o/i;

    move-result-object v2

    instance-of v4, v2, Lb/o/j;

    if-eqz v4, :cond_1

    check-cast v2, Lb/o/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root element <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> did not inflate into a NavGraph"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception inflating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1
.end method
