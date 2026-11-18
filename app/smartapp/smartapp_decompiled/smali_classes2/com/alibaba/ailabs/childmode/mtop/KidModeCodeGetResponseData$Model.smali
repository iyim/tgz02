.class public Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;
.super Ljava/lang/Object;
.source "KidModeCodeGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Model"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field timeout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;->timeout:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;->code:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponseData$Model;->timeout:Ljava/lang/String;

    return-void
.end method
