.class public Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;
.super Ljava/lang/Object;
.source "AppUsedTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;
    }
.end annotation


# instance fields
.field appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field bizGroup:Ljava/lang/String;

.field bizType:Ljava/lang/String;

.field localTimeEnd:Ljava/lang/String;

.field localTimeStart:Ljava/lang/String;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->appList:Ljava/util/List;

    return-object v0
.end method

.method public getBizGroup()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->bizGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimeEnd()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->localTimeEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimeStart()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->localTimeStart:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->appList:Ljava/util/List;

    return-void
.end method

.method public setBizGroup(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->bizGroup:Ljava/lang/String;

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setLocalTimeEnd(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->localTimeEnd:Ljava/lang/String;

    return-void
.end method

.method public setLocalTimeStart(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->localTimeStart:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->uuid:Ljava/lang/String;

    return-void
.end method
