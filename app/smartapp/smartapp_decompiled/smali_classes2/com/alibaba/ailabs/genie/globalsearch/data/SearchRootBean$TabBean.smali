.class public Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;
.super Ljava/lang/Object;
.source "SearchRootBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBean"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->title:Ljava/lang/String;

    return-object v0
.end method
