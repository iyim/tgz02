.class public Lcom/alibaba/ailabs/genie/contacts/avatar/AvatarUtils;
.super Ljava/lang/Object;
.source "AvatarUtils.java"


# static fields
.field public static final AVATAR_BUCKET_NAME:Ljava/lang/String; = "aicloud"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static downloadAvatar(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;)V
    .locals 1

    const-string v0, "aicloud"

    .line 25
    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static genUploadAvatarKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "turandot/contacts/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/pic_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uploadAvatar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/AvatarUtils;->genUploadAvatarKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aicloud"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper;->upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/oss/UploadFileHelper$UploadFileListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
