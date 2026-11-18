.class Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest$1;
.super Ljava/lang/Object;
.source "DataParserRequest.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->mDataParseCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;->onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    move-result-object p1

    return-object p1
.end method
