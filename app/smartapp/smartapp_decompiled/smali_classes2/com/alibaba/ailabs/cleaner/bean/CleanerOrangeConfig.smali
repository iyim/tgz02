.class public Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;
.super Ljava/lang/Object;
.source "CleanerOrangeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;
    }
.end annotation


# static fields
.field public static final TYPE_NOT_DEEP_CLEAN:I = 0x3ea

.field public static final TYPE_NOT_UNINSTALL:I = 0x3e9

.field public static final TYPE_NOT_UNINSTALL_AND_DEEP_CLEAN:I = 0x3e8


# instance fields
.field clearSdCardLevel:I

.field otherPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClearSdCardLevel()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->clearSdCardLevel:I

    return v0
.end method

.method public getOtherPath()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->otherPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserPackageByName(Ljava/lang/String;)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->userPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;

    .line 88
    invoke-virtual {v1}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserPackageNameByName(Ljava/lang/String;)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->userPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;

    .line 101
    invoke-virtual {v1}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserPkgList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->userPkgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setClearSdCardLevel(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->clearSdCardLevel:I

    return-void
.end method

.method public setOtherPath(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->otherPath:Ljava/util/ArrayList;

    return-void
.end method

.method public setUserPkgList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->userPkgList:Ljava/util/ArrayList;

    return-void
.end method
