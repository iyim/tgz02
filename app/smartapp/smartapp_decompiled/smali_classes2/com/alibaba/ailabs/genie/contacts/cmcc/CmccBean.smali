.class public Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;
.super Ljava/lang/Object;
.source "CmccBean.java"


# instance fields
.field private mImsNum:Ljava/lang/String;

.field private mIsOpenIms:Ljava/lang/String;

.field private mRemainCommonTime:Ljava/lang/String;

.field private mRemainFreeTime:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getImsNum()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mImsNum:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOpenIms()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mIsOpenIms:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainCommonTime()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mRemainCommonTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainFreeTime()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mRemainFreeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mStatus:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mRemainFreeTime:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mRemainCommonTime:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mIsOpenIms:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mImsNum:Ljava/lang/String;

    return-void
.end method

.method public setImsNum(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mImsNum:Ljava/lang/String;

    return-void
.end method

.method public setIsOpenIms(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mIsOpenIms:Ljava/lang/String;

    return-void
.end method

.method public setRemainCommonTime(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mRemainCommonTime:Ljava/lang/String;

    return-void
.end method

.method public setRemainFreeTime(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mRemainFreeTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;->mStatus:Ljava/lang/String;

    return-void
.end method
