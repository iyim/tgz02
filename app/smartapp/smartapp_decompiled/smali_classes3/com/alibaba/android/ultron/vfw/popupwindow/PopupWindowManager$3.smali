.class Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->bindKeyListeners()V
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

    .line 157
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 160
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$000(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$200(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/view/animation/AlphaAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result p2

    if-nez p2, :cond_0

    .line 161
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-virtual {p2, p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->dismiss(Z)V

    :cond_0
    return p1
.end method
