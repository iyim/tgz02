.class public abstract Lcom/taobao/phenix/intf/AbsPhenixCreator;
.super Ljava/lang/Object;
.source "AbsPhenixCreator.java"


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
.method public error(I)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    return-object p0
.end method

.method public abstract fetch()Lcom/taobao/phenix/intf/PhenixTicket;
.end method

.method public abstract into(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;
.end method

.method public onlyCache()Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    return-object p0
.end method

.method public placeholder(I)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
