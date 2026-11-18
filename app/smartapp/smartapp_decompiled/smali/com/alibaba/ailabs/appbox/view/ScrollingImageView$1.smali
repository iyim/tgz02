.class final Lcom/alibaba/ailabs/appbox/view/ScrollingImageView$1;
.super Ljava/lang/Object;
.source "ScrollingImageView.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
