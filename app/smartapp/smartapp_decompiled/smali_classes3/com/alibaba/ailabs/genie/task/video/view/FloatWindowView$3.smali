.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$3;
.super Ljava/lang/Object;
.source "FloatWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->moreBtnExposure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$3;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 134
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$3;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$300(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "traceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$3;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$400(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->BUTTON_MORE_EXPOSURE:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->SPM:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->exposureUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
