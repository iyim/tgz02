.class Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;
.super Ljava/lang/Object;
.source "TakePhotoActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPictureTaken$78$TakePhotoActivity$1(Ljava/lang/String;)V
    .locals 2

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "avatarPath"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->finish()V

    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    .line 97
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->setSafe(Z)V

    .line 98
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->maskView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->getCropRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 101
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 102
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    .line 103
    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int p2, p2, v3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr p2, v3

    .line 104
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v2, p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/FileUtil;->saveBitmapToAvatarPath(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$1$PTxVnGyKAR6Kqxdqcbu9Pq-ds8E;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$1$PTxVnGyKAR6Kqxdqcbu9Pq-ds8E;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
