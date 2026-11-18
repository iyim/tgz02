.class public Lcom/ut/mini/module/plugin/UTPluginConfig;
.super Ljava/lang/Object;
.source "UTPluginConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private close:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private open:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private other:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClose()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginConfig;->close:Ljava/util/List;

    return-object v0
.end method

.method public getOpen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginConfig;->open:Ljava/util/List;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ut/mini/module/plugin/UTPluginConfig;->other:Ljava/lang/String;

    return-object v0
.end method

.method public setClose(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginConfig;->close:Ljava/util/List;

    return-void
.end method

.method public setOpen(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginConfig;->open:Ljava/util/List;

    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ut/mini/module/plugin/UTPluginConfig;->other:Ljava/lang/String;

    return-void
.end method
