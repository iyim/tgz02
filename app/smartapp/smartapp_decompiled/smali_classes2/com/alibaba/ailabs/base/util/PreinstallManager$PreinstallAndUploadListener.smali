.class public interface abstract Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;
.super Ljava/lang/Object;
.source "PreinstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/base/util/PreinstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreinstallAndUploadListener"
.end annotation


# virtual methods
.method public abstract preinstallFailed(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract preinstallSuccess(Ljava/lang/String;)V
.end method

.method public abstract startPreinstall(Ljava/lang/String;)V
.end method

.method public abstract startUpload(Ljava/lang/String;)V
.end method

.method public abstract uploadFailed(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract uploadSuccess(Ljava/lang/String;)V
.end method
