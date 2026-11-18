.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;
.super Ljava/lang/Object;
.source "ShoppingItemAddressList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addressDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;->addressDataList:Ljava/util/List;

    return-void
.end method
