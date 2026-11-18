.class public Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo;
.super Lcom/rich/czlylibary/bean/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;
    }
.end annotation


# instance fields
.field private userInfoItem:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getUserInfoItem()Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo;->userInfoItem:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;

    return-object v0
.end method

.method public setUserInfoItem(Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo;->userInfoItem:Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;

    return-void
.end method
