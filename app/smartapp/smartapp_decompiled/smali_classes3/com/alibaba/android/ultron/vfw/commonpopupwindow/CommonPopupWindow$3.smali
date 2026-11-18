.class Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$3;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 179
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$3;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$3;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$200(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 183
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$3;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->dismiss(Z)V

    return-void
.end method
