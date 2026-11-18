.class public Lcom/alibaba/android/umbrella/link/UMRefContext;
.super Ljava/lang/Object;
.source "UMRefContext.java"


# instance fields
.field private final linkId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/UMRefContext;->linkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLinkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/UMRefContext;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/UMRefContext;->linkId:Ljava/lang/String;

    return-object v0
.end method
