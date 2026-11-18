.class public Lcom/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer;
.super Ljava/lang/Object;
.source "NativeAGRecordProducer.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;
.implements Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;


# instance fields
.field public mNative:J

.field mProducer:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer;->mProducer:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;

    .line 11
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer;->mProducer:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;

    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;->setConsumer(Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;)V

    return-void
.end method


# virtual methods
.method public native feed([BI)I
.end method

.method public setConsumer(Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public start()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer;->mProducer:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;->start()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer;->mProducer:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;->stop()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
