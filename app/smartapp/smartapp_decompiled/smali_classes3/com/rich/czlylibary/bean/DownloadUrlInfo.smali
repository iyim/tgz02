.class public Lcom/rich/czlylibary/bean/DownloadUrlInfo;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/DownloadUrlInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/DownloadUrlInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method
