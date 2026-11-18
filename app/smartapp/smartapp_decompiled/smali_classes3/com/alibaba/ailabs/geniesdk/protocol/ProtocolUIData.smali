.class public Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;
.super Ljava/lang/Object;
.source "ProtocolUIData.java"


# instance fields
.field private packageName:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private searchId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;->searchId:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;->protocol:Ljava/lang/String;

    return-void
.end method

.method public setSearchId(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolUIData;->searchId:Ljava/lang/String;

    return-void
.end method
