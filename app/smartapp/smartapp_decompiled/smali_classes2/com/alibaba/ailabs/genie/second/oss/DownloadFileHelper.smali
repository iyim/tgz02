.class public Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper;
.super Ljava/lang/Object;
.source "DownloadFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;,
        Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_DOWNLOAD_TO_OSS_THROW_EXCEPTION:I = -0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileTask;->start()V

    return-void
.end method
