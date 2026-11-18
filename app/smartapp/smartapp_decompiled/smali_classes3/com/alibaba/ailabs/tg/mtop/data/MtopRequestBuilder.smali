.class public Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;
.super Ljava/lang/Object;
.source "MtopRequestBuilder.java"


# instance fields
.field private mMtopRequest:Lmtopsdk/mtop/domain/IMTOPDataObject;

.field private mOnResponseListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

.field private mOutClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mUserFlag:I


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
.method public getMtopRequest()Lmtopsdk/mtop/domain/IMTOPDataObject;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mMtopRequest:Lmtopsdk/mtop/domain/IMTOPDataObject;

    return-object v0
.end method

.method public getOnResponseListener()Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mOnResponseListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    return-object v0
.end method

.method public getOutClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mOutClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUserFlag()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mUserFlag:I

    return v0
.end method

.method public setMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mMtopRequest:Lmtopsdk/mtop/domain/IMTOPDataObject;

    return-void
.end method

.method public setOnResponseListener(Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;-><init>(Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mOnResponseListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    return-void
.end method

.method public setOutClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mOutClass:Ljava/lang/Class;

    return-void
.end method

.method public setUserFlag(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/alibaba/ailabs/tg/mtop/data/MtopRequestBuilder;->mUserFlag:I

    return-void
.end method
