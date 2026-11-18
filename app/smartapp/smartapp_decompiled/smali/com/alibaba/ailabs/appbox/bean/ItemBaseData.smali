.class public Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;
.super Ljava/lang/Object;
.source "ItemBaseData.java"


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;->type:I

    return-void
.end method


# virtual methods
.method public getRowItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
