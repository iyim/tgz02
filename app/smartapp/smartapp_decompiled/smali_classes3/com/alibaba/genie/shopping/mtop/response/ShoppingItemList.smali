.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemList;
.super Ljava/lang/Object;
.source "ShoppingItemList.java"


# instance fields
.field public descURL:Ljava/lang/String;

.field public id:I

.field public itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field public title:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
