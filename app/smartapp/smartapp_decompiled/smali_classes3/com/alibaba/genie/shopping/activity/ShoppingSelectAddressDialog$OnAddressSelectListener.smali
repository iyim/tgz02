.class public interface abstract Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;
.super Ljava/lang/Object;
.source "ShoppingSelectAddressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAddressSelectListener"
.end annotation


# virtual methods
.method public abstract onAddressSelect(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;)V"
        }
    .end annotation
.end method
