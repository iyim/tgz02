.class public Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;
.super Ljava/lang/Object;
.source "DeviceDetailsInfo.java"


# instance fields
.field public mDevAddress:Ljava/lang/String;

.field public mDevName:Ljava/lang/String;

.field public mDevPosition:Ljava/lang/String;

.field public mDevUuid:Ljava/lang/String;

.field public mWakeupFeedback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u56fe\u5170\u6735"

    .line 4
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    const-string v1, "none"

    .line 7
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u56fe\u5170\u6735"

    .line 4
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    const-string v1, "none"

    .line 7
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevUuid:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevUuid:Ljava/lang/String;

    :cond_0
    return-void
.end method
