.class public Lcom/taobao/android/PhenixCreatorAdapter;
.super Ljava/lang/Object;
.source "PhenixCreatorAdapter.java"

# interfaces
.implements Lcom/taobao/android/AliImageCreatorInterface;


# instance fields
.field private final mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/PhenixCreator;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    return-void
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/taobao/phenix/intf/PhenixCreator;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/intf/PhenixCreator;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public asThumbnail(IZ)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/intf/PhenixCreator;->asThumbnail(IZ)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public varargs bitmapProcessors([Lcom/taobao/phenix/bitmap/BitmapProcessor;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->bitmapProcessors([Lcom/taobao/phenix/bitmap/BitmapProcessor;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public diskCachePriority(I)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->diskCachePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public error(I)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->error(I)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public failListener(Lcom/taobao/android/AliImageListener;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/AliImageListener<",
            "Lcom/taobao/android/AliImageFailEvent;",
            ">;)",
            "Lcom/taobao/android/AliImageCreatorInterface;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    new-instance v1, Lcom/taobao/android/AliImageFailListenerAdapter;

    invoke-direct {v1, p1}, Lcom/taobao/android/AliImageFailListenerAdapter;-><init>(Lcom/taobao/android/AliImageListener;)V

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public fetch()Lcom/taobao/android/AliImageTicketInterface;
    .locals 2

    .line 196
    new-instance v0, Lcom/taobao/android/PhenixTicketAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v1}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/PhenixTicketAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    return-object v0
.end method

.method public forceAnimationToBeStatic(Z)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->forceAnimationToBeStatic(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public getRetryHandlerOnFailure()Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->getRetryHandlerOnFailure()Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/taobao/android/AliImageTicketInterface;
    .locals 2

    .line 171
    new-instance v0, Lcom/taobao/android/PhenixTicketAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v1, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->into(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixTicketAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;F)Lcom/taobao/android/AliImageTicketInterface;
    .locals 2

    .line 176
    new-instance v0, Lcom/taobao/android/PhenixTicketAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/phenix/intf/PhenixCreator;->into(Landroid/widget/ImageView;F)Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixTicketAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;II)Lcom/taobao/android/AliImageTicketInterface;
    .locals 2

    .line 181
    new-instance v0, Lcom/taobao/android/PhenixTicketAdapter;

    iget-object v1, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/phenix/intf/PhenixCreator;->into(Landroid/widget/ImageView;II)Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixTicketAdapter;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    return-object v0
.end method

.method public limitSize(Landroid/view/View;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->limitSize(Landroid/view/View;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public limitSize(Landroid/view/View;II)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/phenix/intf/PhenixCreator;->limitSize(Landroid/view/View;II)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public memOnly(Z)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->memOnly(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public memoryCachePriority(I)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->memoryCachePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public notSharedDrawable(Z)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->notSharedDrawable(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public onlyCache()Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->onlyCache()Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public placeholder(I)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->placeholder(I)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public preloadWithSmall(Z)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->preloadWithSmall(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public releasableDrawable(Z)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->releasableDrawable(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public retryHandler(Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->retryHandler(Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public scaleFromLarge(Z)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->scaleFromLarge(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public schedulePriority(I)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->schedulePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public secondary(Ljava/lang/String;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->secondary(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public setCacheKey4PlaceHolder(Ljava/lang/String;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->setCacheKey4PlaceHolder(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public setImageStrategyInfo(Ljava/lang/Object;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->setImageStrategyInfo(Ljava/lang/Object;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public skipCache()Lcom/taobao/android/AliImageCreatorInterface;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->skipCache()Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public succListener(Lcom/taobao/android/AliImageListener;)Lcom/taobao/android/AliImageCreatorInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/AliImageListener<",
            "Lcom/taobao/android/AliImageSuccEvent;",
            ">;)",
            "Lcom/taobao/android/AliImageCreatorInterface;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    new-instance v1, Lcom/taobao/android/AliImageSuccListenerAdapter;

    invoke-direct {v1, p1}, Lcom/taobao/android/AliImageSuccListenerAdapter;-><init>(Lcom/taobao/android/AliImageListener;)V

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/PhenixCreatorAdapter;->mPhenixCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
