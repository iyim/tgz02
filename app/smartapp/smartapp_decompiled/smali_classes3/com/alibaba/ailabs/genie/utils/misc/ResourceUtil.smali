.class public Lcom/alibaba/ailabs/genie/utils/misc/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 21
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getColor(I)I
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 37
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDimension(I)F
    .locals 1

    .line 26
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public static getDimensionPixelOffset(I)I
    .locals 1

    .line 30
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
