.class Lcom/taobao/uikit/extend/component/TBProgressBar$1;
.super Landroid/os/AsyncTask;
.source "TBProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/TBProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/res/Resources;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$1;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 74
    aget-object v1, p1, v0

    sget v2, Lcom/taobao/uikit/extend/R$drawable;->uik_progress_light:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    aget-object v2, p1, v0

    sget v3, Lcom/taobao/uikit/extend/R$dimen;->uik_progress_light_width:I

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aget-object p1, p1, v0

    sget v3, Lcom/taobao/uikit/extend/R$dimen;->uik_progress_light_height:I

    .line 78
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 76
    invoke-static {v1, v2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar$1;->doInBackground([Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$1;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->access$002(Lcom/taobao/uikit/extend/component/TBProgressBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
