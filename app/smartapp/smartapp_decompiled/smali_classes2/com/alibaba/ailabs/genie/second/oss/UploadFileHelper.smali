.class public Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper;
.super Ljava/lang/Object;
.source "UploadFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;,
        Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_GET_OSS_CREDENTIAL:I = -0x1

.field public static final ERROR_CODE_UPLOAD_TO_OSS_THROW_EXCEPTION:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V
    .locals 7

    .line 30
    new-instance v6, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileTask;->start()V

    return-void
.end method
