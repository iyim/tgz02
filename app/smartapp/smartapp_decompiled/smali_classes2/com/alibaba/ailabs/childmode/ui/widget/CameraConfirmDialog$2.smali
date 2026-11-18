.class Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$2;
.super Ljava/lang/Object;
.source "CameraConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->dismiss()V

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateEyeModeInfo(Z)V

    return-void
.end method
