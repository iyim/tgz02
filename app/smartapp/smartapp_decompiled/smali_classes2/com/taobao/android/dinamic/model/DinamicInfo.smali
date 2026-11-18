.class public Lcom/taobao/android/dinamic/model/DinamicInfo;
.super Ljava/lang/Object;
.source "DinamicInfo.java"


# instance fields
.field private interpreterVersion:Ljava/lang/String;

.field private option1:[B

.field private padding1:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getInterpreterVersion()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicInfo;->interpreterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOption1()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicInfo;->option1:[B

    return-object v0
.end method

.method public getPadding1()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicInfo;->padding1:[B

    return-object v0
.end method

.method public setInterpreterVersion(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicInfo;->interpreterVersion:Ljava/lang/String;

    return-void
.end method

.method public setOption1([B)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicInfo;->option1:[B

    return-void
.end method

.method public setPadding1([B)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicInfo;->padding1:[B

    return-void
.end method
