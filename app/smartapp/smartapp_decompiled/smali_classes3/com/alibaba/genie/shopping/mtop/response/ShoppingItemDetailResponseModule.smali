.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;
.super Ljava/lang/Object;
.source "ShoppingItemDetailResponseModule.java"


# instance fields
.field public addressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;"
        }
    .end annotation
.end field

.field public extendInfo:Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;

.field public orderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

.field public resultCode:Ljava/lang/String;

.field public resultMsg:Ljava/lang/String;

.field public tbNickName:Ljava/lang/String;

.field public voiceText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
