.class public Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRealHeight(Landroid/content/Context;)I
    .locals 5

    .line 57
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    .line 61
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 65
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    .line 67
    :try_start_0
    const-class v1, Landroid/view/Display;

    const-string v3, "getRawHeight"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method private static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 82
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getScreenRealWidth(Landroid/content/Context;)I
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 47
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method
