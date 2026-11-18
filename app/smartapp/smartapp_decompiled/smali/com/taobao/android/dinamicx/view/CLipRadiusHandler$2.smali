.class Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;
.super Landroid/view/ViewOutlineProvider;
.source "CLipRadiusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->prepare(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

.field final synthetic val$radius:I


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;->this$0:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    iput p2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 65
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;->val$radius:I

    neg-int v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;->val$radius:I

    int-to-float v6, p1

    const/4 v2, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 66
    iget p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;->val$radius:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Outline;->offset(II)V

    return-void
.end method
