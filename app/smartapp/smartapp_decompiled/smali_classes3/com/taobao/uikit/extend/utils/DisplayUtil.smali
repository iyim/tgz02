.class public Lcom/taobao/uikit/extend/utils/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# static fields
.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 37
    sget-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 30
    sget-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 23
    sget-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 15
    sget-object p0, Lcom/taobao/uikit/extend/utils/DisplayUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method
