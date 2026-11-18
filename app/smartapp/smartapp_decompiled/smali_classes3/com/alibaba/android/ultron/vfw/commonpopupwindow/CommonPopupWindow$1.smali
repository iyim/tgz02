.class Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"

# interfaces
.implements Lcom/taobao/android/ultron/datamodel/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->renderRequestData(Lcom/taobao/android/ultron/datamodel/IDMRequester;Lcom/taobao/android/ultron/datamodel/IRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

.field final synthetic val$requestCallback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;Lcom/taobao/android/ultron/datamodel/IRequestCallback;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;->val$requestCallback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$000(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->hideLoading()V

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;->val$requestCallback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 94
    invoke-interface/range {v1 .. v6}, Lcom/taobao/android/ultron/datamodel/IRequestCallback;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Object;",
            "Lcom/taobao/android/ultron/datamodel/IDMContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$000(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->hideLoading()V

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;->val$requestCallback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 103
    invoke-interface/range {v1 .. v6}, Lcom/taobao/android/ultron/datamodel/IRequestCallback;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
