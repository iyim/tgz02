.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;
.super Ljava/lang/Object;
.source "EncyclopediaBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, " width:"

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 187
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundView:Landroid/view/View;

    const-string v4, " mBackgroundBitmap:"

    const-string v5, "EncyclopediaBaseFragment"

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "mBlurBackgroundTask start123"

    .line 193
    invoke-static {v5, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 199
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/16 v6, 0x400

    const/16 v7, 0x258

    invoke-static {v3, v6, v7}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->imageCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 200
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 201
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v9

    double-to-float v3, v6

    .line 202
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "corpBmp width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ratio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " corpBmp\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v4, v4, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v5, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 207
    invoke-virtual {v13, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 208
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scaledBitmap height:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " scaledBitmap\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v4, v4, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/UIUtil;->blurBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBluredBitmap height:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mBluredBitmap\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundView:Landroid/view/View;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;

    invoke-direct {v4, p0, v3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlurBackgroundTask blur use time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "mBlurBackgroundTask blur image with err"

    .line 230
    invoke-static {v5, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    .line 188
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run mBlurBackgroundTask with null, mBackgroundView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlurBackgroundTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
