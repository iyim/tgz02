.class public Lcom/alibaba/genie/shopping/view/dialog/BuildParams;
.super Ljava/lang/Object;
.source "BuildParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public backgroundColorResId:I

.field public backgroundResId:I

.field public cancelable:Z

.field public contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public isNeutralDialog:Z

.field public leftText:Ljava/lang/CharSequence;

.field public leftTextAppearance:I

.field public leftTextColor:I

.field public message:Ljava/lang/CharSequence;

.field public neutralText:Ljava/lang/CharSequence;

.field public neutralTextAppearance:I

.field public neutralTextColor:I

.field public noButton:Z

.field public rightText:Ljava/lang/CharSequence;

.field public rightTextAppearance:I

.field public rightTextColor:I

.field public selectedIndex:I

.field public themeResId:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->selectedIndex:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->noButton:Z

    return-void
.end method
