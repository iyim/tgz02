.class Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->show(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$900(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$1000(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$900(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;->onCancel()V

    :cond_0
    return-void
.end method
