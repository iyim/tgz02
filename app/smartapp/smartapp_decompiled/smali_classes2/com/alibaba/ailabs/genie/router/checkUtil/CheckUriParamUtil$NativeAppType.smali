.class Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;
.super Ljava/lang/Object;
.source "CheckUriParamUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeAppType"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private param_A:Ljava/lang/String;

.field private param_B:Ljava/lang/String;

.field private param_C:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;->this$0:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;->param_A:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;->param_B:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;->param_C:Ljava/lang/String;

    return-void
.end method
