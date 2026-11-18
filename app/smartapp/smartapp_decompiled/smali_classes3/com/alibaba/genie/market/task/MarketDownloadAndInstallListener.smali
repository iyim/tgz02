.class public interface abstract Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
.super Ljava/lang/Object;
.source "MarketDownloadAndInstallListener.java"


# static fields
.field public static final ERROR_ADD_TASK_EXCPTION:I = -0x186c9

.field public static final ERROR_CODE_DOWNLOAD_FAILD:I = -0x186d3

.field public static final ERROR_CODE_DOWNLOAD_PROCESS_KILL:I = -0x186dd

.field public static final ERROR_CODE_DOWNLOAD_SYSTEM_FULL:I = -0x186e7

.field public static final ERROR_CODE_DOWNLOAD_USER_FULL:I = -0x186f1


# virtual methods
.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onInstallFailed(Ljava/lang/String;I)V
.end method

.method public abstract onInstallSuccess(Ljava/lang/String;I)V
.end method
