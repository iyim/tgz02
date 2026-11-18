.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;
.super Ljava/lang/Object;
.source "DataLoaderListener.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;
.implements Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDataLoadFinishBefore(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;
    .locals 0

    return-object p1
.end method
