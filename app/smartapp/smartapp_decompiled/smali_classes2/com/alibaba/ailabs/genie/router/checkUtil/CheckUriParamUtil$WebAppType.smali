.class Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;
.super Ljava/lang/Object;
.source "CheckUriParamUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebAppType"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private param_A:Ljava/lang/String;

.field private param_B:Ljava/lang/String;

.field private param_C:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

.field private vc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->this$0:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "appId"

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->appId:Ljava/lang/String;

    const-string p1, "vc"

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->vc:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->param_A:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->param_B:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->param_C:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->appId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->vc:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->this$0:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->access$200(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 144
    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 145
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p2, p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
