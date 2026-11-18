.class public Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtAccountBean"
.end annotation


# instance fields
.field private extAccountId:Ljava/lang/String;

.field private extAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getExtAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;->extAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;->extAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public setExtAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;->extAccountId:Ljava/lang/String;

    return-void
.end method

.method public setExtAccountType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxQrCodeUserInfo$UserInfoItemBean$ExtAccountBean;->extAccountType:Ljava/lang/String;

    return-void
.end method
