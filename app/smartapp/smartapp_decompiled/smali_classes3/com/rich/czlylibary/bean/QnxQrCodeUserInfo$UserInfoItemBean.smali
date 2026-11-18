.class public Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoItemBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserMedalInfoListBean;,
        Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserLevelInfoBean;,
        Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserCreditInfoBean;,
        Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private bgpic:Ljava/lang/String;

.field private bigIcon:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private extAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;",
            ">;"
        }
    .end annotation
.end field

.field private middleIcon:Ljava/lang/String;

.field private miguPoint:Ljava/lang/String;

.field private msisdn:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private setting:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private smallIcon:Ljava/lang/String;

.field private userCreditInfo:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserCreditInfoBean;

.field private userId:Ljava/lang/String;

.field private userLevelInfo:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserLevelInfoBean;

.field private userMedalInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserMedalInfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBgpic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->bgpic:Ljava/lang/String;

    return-object v0
.end method

.method public getBigIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->bigIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getExtAccountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->extAccountList:Ljava/util/List;

    return-object v0
.end method

.method public getMiddleIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->middleIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getMiguPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->miguPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSetting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->setting:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->smallIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCreditInfo()Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserCreditInfoBean;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userCreditInfo:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserCreditInfoBean;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevelInfo()Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserLevelInfoBean;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userLevelInfo:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserLevelInfoBean;

    return-object v0
.end method

.method public getUserMedalInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserMedalInfoListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userMedalInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setBgpic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->bgpic:Ljava/lang/String;

    return-void
.end method

.method public setBigIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->bigIcon:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setExtAccountList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->extAccountList:Ljava/util/List;

    return-void
.end method

.method public setMiddleIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->middleIcon:Ljava/lang/String;

    return-void
.end method

.method public setMiguPoint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->miguPoint:Ljava/lang/String;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSetting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->setting:Ljava/lang/String;

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setSmallIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->smallIcon:Ljava/lang/String;

    return-void
.end method

.method public setUserCreditInfo(Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserCreditInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userCreditInfo:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserCreditInfoBean;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserLevelInfo(Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserLevelInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userLevelInfo:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserLevelInfoBean;

    return-void
.end method

.method public setUserMedalInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$UserMedalInfoListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userMedalInfoList:Ljava/util/List;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;->userType:Ljava/lang/String;

    return-void
.end method
