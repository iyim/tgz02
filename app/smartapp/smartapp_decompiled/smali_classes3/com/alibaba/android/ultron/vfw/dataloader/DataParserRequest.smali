.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;
.super Ljava/lang/Object;
.source "DataParserRequest.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;


# instance fields
.field mDataLoaderParser:Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;

.field mDataParseCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;

.field mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static create(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;
    .locals 1

    .line 13
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;-><init>()V

    .line 15
    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    .line 16
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->mDataLoaderParser:Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;

    .line 17
    iput-object p2, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->mDataParseCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    return-object v0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DataParserRequest params error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->mDataLoaderParser:Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest$1;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;->doParse(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)V

    return-void
.end method
