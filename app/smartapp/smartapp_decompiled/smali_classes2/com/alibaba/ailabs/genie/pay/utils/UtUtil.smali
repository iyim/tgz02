.class public Lcom/alibaba/ailabs/genie/pay/utils/UtUtil;
.super Ljava/lang/Object;
.source "UtUtil.java"


# static fields
.field private static final APP_INFO:Ljava/lang/String; = "genie_app_info"

.field private static final CODE:Ljava/lang/String; = "code"

.field private static final EVENT_RESULT:Ljava/lang/String; = "pay_result"

.field private static final EVENT_START:Ljava/lang/String; = "pay_start"

.field private static final MSG:Ljava/lang/String; = "msg"

.field private static final PAGE_PAY:Ljava/lang/String; = "page_pay"

.field private static final PAY_PARAM:Ljava/lang/String; = "genie_param"

.field private static final TYPE:Ljava/lang/String; = "genie_pay_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/utils/UtUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/utils/UtUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onPay(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;)V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genie_pay_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genie_app_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "genie_param"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, "pay_start"

    const-string v1, "page_pay"

    .line 44
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/pay/utils/UtUtil;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onPayResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 50
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "genie_app_info"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "genie_param"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "code"

    .line 56
    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "msg"

    .line 57
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pay_result"

    const-string p1, "page_pay"

    .line 58
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/pay/utils/UtUtil;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
