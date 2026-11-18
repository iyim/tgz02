.class Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->bindKeyListeners()V
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

    .line 187
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 190
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$100(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$300(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/view/animation/AlphaAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result p2

    if-nez p2, :cond_0

    .line 191
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-virtual {p2, p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->dismiss(Z)V

    :cond_0
    return p1
.end method
