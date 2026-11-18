.class Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$2;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 149
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$2;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$2;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$100(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$2;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->dismiss(Z)V

    return-void
.end method
