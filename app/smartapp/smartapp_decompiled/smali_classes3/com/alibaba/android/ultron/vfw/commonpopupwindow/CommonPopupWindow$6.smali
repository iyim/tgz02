.class Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->show(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$1000(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$1000(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {v1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$1100(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;->onCancel(Z)V

    :cond_0
    return-void
.end method
